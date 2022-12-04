import axios from "axios";
const API_URL = "http://127.0.0.1:3000/";

class AuthService {
  register(email, password) {
    return axios.post(API_URL + "users", { email, password });
  }

  login(email, password) {
    return axios
      .post(API_URL + "users/sign_in", { email, password })
      .then((response) => {
        if (response.accessToken) {
          localStorage.setItem("user", JSON.stringify(response.data));
        }

        return response.data;
      });
  }

  logout() {
    localStorage.removeItem("user");
  }
}

export default new AuthService();
