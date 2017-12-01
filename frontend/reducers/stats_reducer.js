import {RECEIVE_ALL_PROJECTS_COUNT, RECEIVE_ALL_FUNDED_PROJECTS, RECEIVE_ALL_BACKERS} from '../actions/stats_actions';
import merge from 'lodash/merge';

const statsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);

  switch (action.type) {
    case RECEIVE_ALL_PROJECTS_COUNT:
      return merge({}, oldState, {["project_count"]: action.projects});
    case RECEIVE_ALL_FUNDED_PROJECTS:
      return merge({}, oldState, {["funded_count"]: action.projects})
    case RECEIVE_ALL_BACKERS:
    return merge({}, oldState, {["backers_count"]: action.backers});
    default:
      return oldState;
  }
};

export default statsReducer;


// Here you want to merge with the oldState. not simply call action.projects
