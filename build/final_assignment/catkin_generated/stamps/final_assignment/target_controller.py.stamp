#! /usr/bin/env python

# import ros stuff
import rospy
import time
from geometry_msgs.msg import Point
from std_srvs.srv import *
from move_base_msgs.msg import MoveBaseActionGoal
from geometry_msgs.msg import Twist
from tf import transformations
import random

import math
pub = None
yaw_ = 0
yaw_error_allowed_ = 5 * (math.pi / 180)  # 5 degrees
position_ = Point()
desired_position_ = Point()
# first_action_check = True
desired_position_.x = 0
desired_position_.y = 0
desired_position_.z = 0
# first target setter
target_pos_lists = [[-4,-3],[-4,2],[-4,7],[5,-7],[5,-3],[5,1]]

# service callback
def clbk_odom(msg):
    global position_, yaw_ 

    # position
    position_ = msg.linear
    yaw_ = msg.angular.z
    
# def target_maker(msg):
#     global first_action_check,pub,yaw_,yaw_error_allowed_ ,position_,desired_position_ ,target_pos_lists
    
#     # position
#     position_ = msg.linear
#     yaw_ = msg.angular.z

#     Goal = MoveBaseActionGoal()
#     Goal.goal.target_pose.header.frame_id = "map"
#     Goal.goal.target_pose.header.stamp = rospy.get_time()
#     Goal.goal.target_pose.pose.orientation.w =1
#     if first_action_check == True:
#         first_action_check = False
#         random_choice = random.randrange(6)
#         Goal.goal.target_pose.pose.position.x =  target_pos_lists[random_choice][0]
#         Goal.goal.target_pose.pose.position.y =  target_pos_lists[random_choice][1]
#         pub.publish(Goal)
#         desired_position_.x = Goal.goal.target_pose.pose.position.x
#         desired_position_.y = Goal.goal.target_pose.pose.position.y
#         print("Random target generated! x = " +
#         str(desired_position_.x) + ", y = " + str(desired_position_.y))
#     else:
#         dis_error = math.sqrt(pow((position_.x - desired_position_.x),2) + pow((position_.x - desired_position_.x),2))
#         yaw_error = abs(1-yaw_)
#         if dis_error < 0.1 and yaw_error < yaw_error_allowed_:
#             print("Target reached! Please insert a new position")
#             check_feasible_target = False
#             while not check_feasible_target:
#                 x = float(raw_input('x :'))
#                 y = float(raw_input('y :'))
#                 for i in range(6):
#                     if x == target_pos_lists[i][0] and y == target_pos_lists[i][1]:
#                         check_feasible_target = True
#                         Goal.goal.target_pose.pose.position.x =  x
#                         Goal.goal.target_pose.pose.position.y =  y
#                         pub.publish(Goal)
#                         desired_position_.x = Goal.goal.target_pose.pose.position.x
#                         desired_position_.y = Goal.goal.target_pose.pose.position.y
#                         break
#                 if not check_feasible_target:
#                     print("Sorry, the request position is not feasible...")
#             print("Thanks! Let's reach the next position")
    

def main():
    global pub,yaw_,yaw_error_allowed_ ,position_,desired_position_ ,target_pos_lists
    rospy.init_node('target_controller')
    pub = rospy.Publisher('/move_base/goal', MoveBaseActionGoal, queue_size=5)
    sub_odom = rospy.Subscriber('/gmapping_odom', Twist, clbk_odom)
    # sub_odom = rospy.Subscriber('/gmapping_odom', Twist, target_maker)
    # check_set_new_pos()
    Goal = MoveBaseActionGoal()
    Goal.goal.target_pose.header.frame_id = "map"
    Goal.goal.target_pose.pose.orientation.w =1
    rate = rospy.Rate(0.1)
    count = 0
    while not rospy.is_shutdown():
        Goal.header.stamp = rospy.get_time()
        if count == 0:
            count += 1
            random_choice = random.randrange(6)
            Goal.goal.target_pose.pose.position.x =  target_pos_lists[random_choice][0]
            Goal.goal.target_pose.pose.position.y =  target_pos_lists[random_choice][1]
            pub.publish(Goal)
            desired_position_.x = Goal.goal.target_pose.pose.position.x
            desired_position_.y = Goal.goal.target_pose.pose.position.y
            print("Random target generated! x = " +
            str(desired_position_.x) + ", y = " + str(desired_position_.y))
        else:
            dis_error = math.sqrt(pow((position_.x - desired_position_.x),2) + pow((position_.x - desired_position_.x),2))
            yaw_error = abs(1-yaw_)
            if dis_error < 0.1 and yaw_error < yaw_error_allowed_:
                count += 1
                print("Target reached! Please insert a new position")
                check_feasible_target = False
                while not check_feasible_target:
                    x = float(raw_input('x :'))
                    y = float(raw_input('y :'))
                    for i in range(6):
                        if x == target_pos_lists[i][0] and y == target_pos_lists[i][1]:
                            check_feasible_target = True
                            Goal.goal.target_pose.pose.position.x =  x
                            Goal.goal.target_pose.pose.position.y =  y
                            pub.publish(Goal)
                            desired_position_.x = Goal.goal.target_pose.pose.position.x
                            desired_position_.y = Goal.goal.target_pose.pose.position.y
                            break
                    if not check_feasible_target:
                        print("Sorry, the request position is not feasible...")
                print("Thanks! Let's reach the next position")
        # x = desired_position_.x
        # y = desired_position_.y
        # print("Hi! We are reaching the first position: x = " +
        #     str(x) + ", y = " + str(y))
        # print("now positon: x = " +
        #     str(position_.x) + ", y = " + str(position_.y))
        rate.sleep()
    # rospy.spin()
    
if __name__ == '__main__':
    main()
