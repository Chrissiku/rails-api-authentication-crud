import axios from "axios";
import authHeader from "./auth-header";

const API_URL = "http://127.0.0.1:3000/";

class UserService {
  getPublicContent() {
    return axios.get(API_URL + "users/all");
  }

  getUserBoard() {
    return axios.get(API_URL + "users", { header: authHeader() });
  }
}

export default UserService();
