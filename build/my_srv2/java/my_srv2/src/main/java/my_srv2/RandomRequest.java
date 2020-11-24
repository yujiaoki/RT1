package my_srv2;

public interface RandomRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "my_srv2/RandomRequest";
  static final java.lang.String _DEFINITION = "float32 min\nfloat32 max\n";
  float getMin();
  void setMin(float value);
  float getMax();
  void setMax(float value);
}
