import java.util.Date;
import java.io.File;
import java.util.*;
List getFileNames() {

  // we'll have a look in the data folder
  java.io.File folder = new java.io.File(dataPath(""));

  // list the files in the data folder
  String[] filenames = folder.list();

  // display the filenames
  List fileList = Arrays.asList(filenames);
  //for (int i = 0; i < filenames.length; i++) {
  //  println(filenames[i]);
  //}
  return fileList;
}
