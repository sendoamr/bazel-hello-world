import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class HelloWorld {

    public static void main(String[] args) {
        System.out.println("Java: Hello World!");
		InputStream helloStream = HelloWorld.class.getResourceAsStream("resources/hello.json"); 
		System.out.println(getStringFromInputStream(helloStream));

	}

	private static String getStringFromInputStream(InputStream is) {
		BufferedReader buffer = null;
		StringBuilder content = new StringBuilder();

		String line;
		try {
			buffer = new BufferedReader(new InputStreamReader(is));
			while ((line = buffer.readLine()) != null) {
				content.append(line);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (buffer != null) {
				try {
					buffer.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return content.toString();
	}
}
