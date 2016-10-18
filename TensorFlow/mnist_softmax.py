##############################################################
# A simple tf script to train onf the mnist data
#
# Author: Carl Cortright 
# Date: 9/29/2016
# Updated 10/17/2016
#
# Tutorial: https://www.tensorflow.org/versions/r0.11/tutorials/mnist/beginners/index.html#about-this-tutorial
##############################################################
from tensorflow.examples.tutorials.mnist import input_data
import tensorflow as tf

# Import the MNIST dataset
mnist = input_data.read_data_sets("MNIST_DATA/", one_hot=True)

# Set up the softmax regression
x = tf.placeholder(tf.float32, [None, 784]) 
W = tf.Variable(tf.zeros([784, 10]))
b = tf.Variable(tf.zeros([10]))

y = tf.nn.softmax(tf.matmul(x, W) + b) 
y_ = tf.placeholder(tf.float32, [None, 10]) 

# Create the loss function
cross_entropy = tf.reduce_mean(-tf.reduce_sum(y_ * tf.log(y), reduction_indices=[1])) 
train_step = tf.train.GradientDescentOptimizer(0.5).minimize(cross_entropy)

# Initialize and start the session 
init = tf.initialize_all_variables()
sess = tf.Session()
sess.run(init)


for i in range(1000):
      batch_xs, batch_ys = mnist.train.next_batch(100)
      sess.run(train_step, feed_dict={x: batch_xs, y_: batch_ys})

# Check the accuracy 
correct_prediction = tf.equal(tf.argmax(y,1), tf.argmax(y_,1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))
print(sess.run(accuracy, feed_dict={x: mnist.test.images, y_: mnist.test.labels}))
