import {RECEIVE_REWARD} from '../actions/reward_actions';
import {RECEIVE_BACKER_REWARD} from '../actions/backer_actions';
import merge from 'lodash/merge';

const rewardsReducer = (oldState = {}, action) => {
  // debugger;
  Object.freeze(oldState)
  switch (action.type) {
    case RECEIVE_REWARD:
      return merge({}, oldState, {[action.reward.id]: action.reward});
    case RECEIVE_BACKER_REWARD:
      return merge({}, oldState, {[action.reward.id]: action.reward});
    default:
      return oldState;
  }
};

export default rewardsReducer;
