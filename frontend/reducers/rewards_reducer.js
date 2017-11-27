import {RECEIVE_REWARD} from '../actions/reward_actions';
import merge from 'lodash/merge';

const rewardsReducer = (oldState = {}, action) => {
  Object.freeze(oldState)
  switch (action.type) {
    case RECEIVE_REWARD:
      return merge({}, oldState, action.reward)
    default:
      return oldState;
  }
};

export default rewardsReducer;
