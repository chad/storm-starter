package storm.starter;
import backtype.storm.spout.Scheme;
import static backtype.storm.utils.Utils.tuple;
import backtype.storm.tuple.Fields;


    public class MakeAStringThisIsDumb implements Scheme {
      public java.util.List<Object> deserialize(byte[] ser) {
        return tuple(new String(ser));
      }
      public Fields getOutputFields() {
        return new Fields("string");
      }
    }
