import {RECEIVE_ALL_PROJECTS, RECEIVE_SINGLE_PROJECT, REMOVE_PROJECT} from '../actions/project_actions';
import merge from 'lodash/merge';


const projectsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);

  let newState;
  switch (action.type) {
    case RECEIVE_ALL_PROJECTS:
      return action.projects
    case RECEIVE_SINGLE_PROJECT:
      newState = merge({}, oldState, {[action.project.id]: action.project});
      return newState;
    case REMOVE_PROJECT:
      newState = merge({}, oldState);
      delete newState[action.project.id];
      return newState;
    default:
      return oldState;
  }
};

export default projectsReducer;
