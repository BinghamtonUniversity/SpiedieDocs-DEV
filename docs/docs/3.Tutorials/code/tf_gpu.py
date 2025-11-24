import tensorflow as tf 
temp_a = [1.0 * i for i in range(10000)]
temp_b = [2.0 * i for i in range(10000)]

# Creates a graph.
a = tf.constant(temp_a, shape=[2, 5000], name='a')
b = tf.constant(temp_b, shape=[5000, 2], name='b')
c = tf.matmul(a, b)
# Creates a session with log_device_placement set to True.
sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))
# Runs the op.
print(sess.run(c))
