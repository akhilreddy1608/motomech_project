#!/usr/bin/env python

import rospy
from std_msgs.msg import Float64
from sensor_msgs.msg import JointState

"""
Topics To Write on:
type: std_msgs/Float64
/mira/pitch_joint_position_controller/command
/mira/roll_joint_position_controller/command
/mira/yaw_joint_position_controller/command
"""

class AmrPositioning(object):

    def __init__(self):
        rospy.init_node('amr_crick_positioning_node', anonymous=True)
        rospy.loginfo("amr_crick_positioning Initialising...")
        self.pub_joint1 = rospy.Publisher('/amr_crick/roll_1_joint_position_controller/command',Float64, queue_size=1)                                                       
                                                           
        self.pub_joint2 = rospy.Publisher('/amr_crick/roll_2_joint_position_controller/command', Float64, queue_size=1)  
                                                 
        self.pub_joint3 = rospy.Publisher('/amr_crick/roll_3_joint_position_controller/command',Float64, queue_size=1)  
                                                     
        self.pub_joint4 = rospy.Publisher('/amr_crick/roll_4_joint_position_controller/command',Float64, queue_size=1)  
                                                        
        self.pub_joint5 = rospy.Publisher('/amr_crick/roll_5_joint_position_controller/command',Float64, queue_size=1)  
                                                           
        self.pub_joint6 = rospy.Publisher('/amr_crick/roll_6_joint_position_controller/command',Float64, queue_size=1)                                                              
        
        self.pub_joint7 = rospy.Publisher('/amr_crick/roll_7_joint_position_controller/command',Float64, queue_size=1)  
                                                                                                                
            

        joint_states_topic_name = "/amr_crick/joint_states"
        rospy.Subscriber(joint_states_topic_name, JointState, self.amr_crick_joints_callback)
        amr_crick_joints_data = None
        while amr_crick_joints_data is None:
            try:
                amr_crick_joints_data = rospy.wait_for_message(joint_states_topic_name, JointState, timeout=5)
            except:
                rospy.logwarn("Time out " + str(joint_states_topic_name))
                pass

        self.amr_crick_joint_dictionary = dict(zip(amr_crick_joints_data.name, amr_crick_joints_data.position))

    def amr_crick_joints_callback(self, msg):
        """
        sensor_msgs/JointState
        std_msgs/Header header
        uint32 seq
        time stamp
        string frame_id
        string[] name
        float64[] position
        float64[] velocity
        float64[] effort

        :param msg:
        :return:
        """
        self.amr_crick_joint_dictionary = dict(zip(msg.name, msg.position))

    def positioning_all_joints(self):

        self.pub_joint1.publish(0)
        self.pub_joint2.publish(0)
        self.pub_joint3.publish(0)
        self.pub_joint4.publish(0)
        self.pub_joint5.publish(0)
        self.pub_joint6.publish(0)
        self.pub_joint7.publish(0)

   
if __name__ == "__main__":
    amr_crick_object = AmrPositioning()
    while True:        
        amr_crick_object.positioning_all_joints()