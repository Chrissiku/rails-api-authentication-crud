import {
  REGISTER_SUCCESS,
  REGISTER_FAIL,
  LOGIN_SUCCESS,
  LOGIN_FAIL,
  LOGOUT,
  SET_MESSAGE,
} from "./types";

import AuthService from "../services/auth.service";

export const register = (email, password) => (dispatch) => {
  return AuthService.register(email, password).then((response) => {
    dispatch({
      type: REGISTER_SUCCESS,
    });

    dispatch({
      type: SET_MESSAGE,
      payload: response.status.message,
    });

    return Promise.resolve();
  },
    (error)=>{
        const message = (error.response.data && )
    }
  );
};
