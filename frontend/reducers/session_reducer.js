import {RECEIVE_CURRENT_USER} from '../actions/session_actions';
import merge from 'lodash/merge';

const _nullUser = Object.freeze({
  currentUser: {id: null}
});
// this makes it accessible if the currentUser is non-existent, in other words, not signed in.

const sessionReducer = (state = _nullUser, action) => {
  Object.freeze(state)
  let currentUser;
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      currentUser = action.currentUser;
      return merge({}, { currentUser });
    default:
      return state;
  }
}

export default sessionReducer;
