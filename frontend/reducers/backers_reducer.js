import {RECEIVE_PROJECT, RECEIVE_REWARD} from '../actions/backer_actions';
import merge from 'lodash/merge';

const backersReducer = (oldState = {}, action) => {
  Object.freeze(oldState);

  switch (action.type) {
    case RECEIVE_PROJECT:
      return merge({}, oldState, {[action.project.id]: action.project})
    // case RECEIVE_REWARD:
    //   return merge({}, oldState, {[action.reward.id]: action.reward})
    default:
    return oldState;
  }
}

export default backersReducer;
