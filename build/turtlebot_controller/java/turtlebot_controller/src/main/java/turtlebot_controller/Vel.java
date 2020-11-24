package turtlebot_controller;

public interface Vel extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "turtlebot_controller/Vel";
  static final java.lang.String _DEFINITION = "string name\nfloat32 vel";
  java.lang.String getName();
  void setName(java.lang.String value);
  float getVel();
  void setVel(float value);
}
