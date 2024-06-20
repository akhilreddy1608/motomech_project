#!/usr/bin/env python
import tf
import rospy

if __name__ == '__main__':

  rospy.init_node('amr_tf_node')

  tf_transformation = tf.TransformBroadcaster()

  rate = rospy.Rate(50)

  while not rospy.is_shutdown():

    tf_transformation.sendTransform((0.0, 0.0, 0.0),
        tf.transformations.quaternion_from_euler(0, 0, 0),
        rospy.Time.now(),"base_link","base_footprint")

    rate.sleep()
