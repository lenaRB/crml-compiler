package crml.translator;

public class Utilities {

    /**
     * Remove the last .* of a name 
     * @return
     */
    public static String stripNameEnding (String name){
        return name.substring(0, name.lastIndexOf('.'));
    }

   public static String addDirToPath (String path, String dir){
        return path + java.io.File.separator + dir;
    }
}
