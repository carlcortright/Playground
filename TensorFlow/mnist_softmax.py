from tensorflow.examples.tutorials.mnist import input_data

mnist = input_data.read_data_sets("MNIST_DATA/", one_hot=True)

##############################################################
# A simple tf script to train onf the mnist data
#
# Author: Carl Cortright 
# Date: 9/29/2016
#
# Tutorial: https://www.tensorflow.org/versions/r0.11/tutorials/mnist/beginners/index.html#about-this-tutorial
##############################################################

import tensorflow as tf

x = tf.placeholder(tf.float32, [None, 784]) # Create a placeholder vector so that tf can do computations outside of python
W = tf.Variable(tf.zeros([784, 10])) # Create the weight vector 
b = tf.Variable(tf.zeros([10])) # Create the bias vector 

y = tf.nn.softmax(tf.matmul(x, W) + b) # Implement the softmax
y_ = tf.placeholder(tf.float32, [None, 10]) # Placeholder for correct class labels 

cross_entropy = tf.reduce_mean(-tf.reduce_sum(y_ * tf.log(y), reduction_indices=[1])) # cross_entropy loss function
train_step = tf.train.GradientDescentOptimizer(0.5).minimize(cross_entropy)

init = tf.initialize_all_variables()

# Start the session 
sess = tf.Session()
sess.run(init)

for i in range(1000):
      batch_xs, batch_ys = mnist.train.next_batch(100)
      sess.run(train_step, feed_dict={x: batch_xs, y_: batch_ys})
      
correct_prediction = tf.equal(tf.argmax(y,1), tf.argmax(y_,1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))
print(sess.run(accuracy, feed_dict={x: mnist.test.images, y_: mnist.test.labels}))
