// jshint esversion: 6

import {RECEIVE_ALL_PROJECTS, RECEIVE_SINGLE_PROJECT, REMOVE_PROJECT} from '../actions/project_actions';
import {RECEIVE_SEARCH_RESULTS, CLEAR_SEARCH_RESULTS} from '../actions/search_actions';
import merge from 'lodash/merge';


export const projectsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);

  let newState;
  switch (action.type) {
    case RECEIVE_ALL_PROJECTS:
      return action.projects;
    case RECEIVE_SINGLE_PROJECT:
      newState = merge({}, oldState, {[action.payload.projects.id]: action.payload.projects});
      return newState;
    case REMOVE_PROJECT:
      newState = merge({}, oldState);
      delete newState[action.project.id];
      return newState;
    default:
      return oldState;
  }
};

// export default projectsReducer;

// undefined error came because of action.project.id instead of the plural action.projects.id

export const searchReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_SEARCH_RESULTS:
      return action.searchResults;
    case CLEAR_SEARCH_RESULTS:
      return {}
    default:
      return state;
  }
};

// export default projectsReducer;
