package my_srv2;

public interface RandomResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "my_srv2/RandomResponse";
  static final java.lang.String _DEFINITION = "float32 x\nfloat32 y";
  float getX();
  void setX(float value);
  float getY();
  void setY(float value);
}
