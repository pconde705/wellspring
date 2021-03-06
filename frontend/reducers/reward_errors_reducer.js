import {RECEIVE_REWARD_ERRORS, CLEAR_ERRORS} from '../actions/reward_actions';

const _nullErrors = [];

export default (state = _nullErrors, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_REWARD_ERRORS:
      return action.errors;
    case CLEAR_ERRORS:
      return [];
    default:
      return state;
  }
};
