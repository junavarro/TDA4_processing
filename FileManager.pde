import java.util.Date;
import java.io.File;
void getFileNames() {

  // we'll have a look in the data folder
  java.io.File folder = new java.io.File(dataPath(""));

  // list the files in the data folder
  String[] filenames = folder.list();

  // display the filenames
  for (int i = 0; i < filenames.length; i++) {
    println(filenames[i]);
  }
}
