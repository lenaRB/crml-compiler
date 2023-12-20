package crml.compiler;

import java.io.File;
import java.util.List;

import org.antlr.v4.runtime.misc.Utils;
import org.antlr.v4.runtime.tree.Tree;
import org.antlr.v4.runtime.tree.Trees;

public class Utilities {

    /**
     * Remove the last .* of a name 
     * @return
     */
    public static String stripNameEnding(String name) {
        // check if it even has an extension and return the name if not!
        if (name.lastIndexOf('.') == -1) {
            return name;
        }
        return name.substring(0, name.lastIndexOf('.'));
    }

   public static String addDirToPath (String path, String dir){
        return path + java.io.File.separator + dir;
    }

     /** Platform dependent end-of-line marker */
     public static final String Eol = System.lineSeparator();
     /** The literal indent char(s) used for pretty-printing */
     public static final String Indents = "  ";
     private static int level;
 
 
     /**
      * Pretty print out a whole tree. {@link #getNodeText} is used on the node payloads to get the text
      * for the nodes. (Derived from Trees.toStringTree(....))
      */
     public static String toPrettyTree(final Tree t, final List<String> ruleNames) {
         level = 0;
         return process(t, ruleNames).replaceAll("(?m)^\\s+$", "").replaceAll("\\r?\\n\\r?\\n", Eol);
     }
 
     private static String process(final Tree t, final List<String> ruleNames) {
         if (t.getChildCount() == 0) return Utils.escapeWhitespace(Trees.getNodeText(t, ruleNames), false);
         StringBuilder sb = new StringBuilder();
         sb.append(lead(level));
         level++;
         String s = Utils.escapeWhitespace(Trees.getNodeText(t, ruleNames), false);
         sb.append(s + ' ');
         for (int i = 0; i < t.getChildCount(); i++) {
             sb.append(process(t.getChild(i), ruleNames));
         }
         level--;
         sb.append(lead(level));
         return sb.toString();
     }
 
     private static String lead(int level) {
         StringBuilder sb = new StringBuilder();
         if (level > 0) {
             sb.append(Eol);
             for (int cnt = 0; cnt < level; cnt++) {
                 sb.append(Indents);
             }
         }
         return sb.toString();
     }

     public static String removeWindowsDriveLetter(String path) {
        // check if is a windows path and remove the /C: part
        int colonIndex = path.indexOf(':');
        if (colonIndex != -1)
            return path.substring(colonIndex + 1, path.length());
        return path;
     }

     public static File getFileInPath(String fileName) {
        String path = System.getenv("PATH");
        
        if (path != null) {
            String[] paths = path.split(File.pathSeparator);

            for (String p : paths) {
                File file = new File(p, fileName);
                if (file.exists()) {
                    return file;
                }
            }
        }
        
        return null;
    }

    public static boolean isWindows() {
        return System.getProperty("os.name").toLowerCase().contains("win");
    }

    public static String toUnixPath(String path) {
        if (!isWindows())
            return path;
        return path.replace('\\', '/');
    }

    public static String getAbsolutePath(String path) {
        File f = new File(path);
        return f.getAbsolutePath();
    }

    
}
