package Servlet;



import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;

public class FileHandler {
    private static String pathStr = "D:\\OneDrive\\Рабочий стол\\Labb22 — копия\\src\\main\\webapp\\Data.dat";
    private static Path path = Paths.get(pathStr);
    public static void writeAutosToFile(Auto auto) throws IOException {
        String autoString = "";
        autoString+=auto.getName()+",";
        autoString+=auto.getBody()+",";
        autoString+=auto.getTransmission()+",";
        autoString+=auto.getEngine()+",";
        autoString+=auto.getYear()+"\n";
        if(!Files.exists(path)) {
            Files.createFile(path);
        }
        Files.write(path, autoString.getBytes(), StandardOpenOption.APPEND);
    }
    public static ArrayList<Auto> readAutosFromFile() throws IOException {
        if(Files.exists(path)) {
            BufferedReader reader = new BufferedReader(new FileReader(pathStr));
            String data = reader.readLine();
            ArrayList<Auto> autos = new ArrayList<>();
            while(data != null) {
                String[] parameters = data.split(",");
                Auto tempAuto = new Auto(parameters[0],parameters[1],parameters[2],parameters[3],Float.parseFloat(parameters[4]));
                autos.add(tempAuto);
                data = reader.readLine();
            }
            reader.close();
            return autos;
        }
        return null;
    }
}