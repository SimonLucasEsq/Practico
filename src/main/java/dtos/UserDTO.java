package dtos;

public class UserDTO extends BaseDTO {
    private String _name;
    private String _userName;
    private String _email;

    public String get_name() {
        return _name;
    }

    public String get_userName() {
        return _userName;
    }

    public String get_email() {
        return _email;
    }

    public void set_name(String _name) {
        this._name = _name;
    }

    public void set_userName(String _userName) {
        this._userName = _userName;
    }

    public void set_email(String _email) {
        this._email = _email;
    }
}
