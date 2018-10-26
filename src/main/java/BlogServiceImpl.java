import grails.plugins.rest.client.RestBuilder;
import grails.plugins.rest.client.RestResponse;
import org.grails.web.json.JSONElement;

//https://jsonplaceholder.typicode.com/
public class BlogServiceImpl {
    private String API_PATH = "https://jsonplaceholder.typicode.com";

    private RestBuilder clienteRest;

    public BlogServiceImpl() {
        clienteRest = new RestBuilder();
    }

    public JSONElement getPosts() {
        final RestResponse response = clienteRest.get(API_PATH + "/posts");
        JSONElement posts= response.getJson();
        return posts;
    }
    public JSONElement getAlbums() {
        final RestResponse response = clienteRest.get(API_PATH + "/albums");
        JSONElement posts= response.getJson();
        return posts;
    }
    public void deletePosts(int id) {
        final RestResponse response = clienteRest.delete(API_PATH + "/posts/" + id);
    }
    public JSONElement getUsers(){
        final RestResponse response = clienteRest.get(API_PATH + "/users");
        JSONElement users= response.getJson();
        return users;
    }
    public JSONElement getUser(int id){
        final RestResponse response = clienteRest.get(API_PATH + "/users/"+id);
        JSONElement users= response.getJson();
        return users;
    }
    public JSONElement getPost(int id){
        final RestResponse response = clienteRest.get(API_PATH + "/posts/"+id);
        JSONElement post= response.getJson();
        return post;
    }
    public JSONElement getCommentByPostId(int id){
        final RestResponse response = clienteRest.get(API_PATH + "/comments?postId="+id);
        JSONElement commentes = response.getJson();
        return commentes;
    }

    public JSONElement getAlbum(int id) {
        System.out.println(id);
        final RestResponse response = clienteRest.get(API_PATH + "/albums/"+id);
        JSONElement album= response.getJson();
        return album;
    }
}
