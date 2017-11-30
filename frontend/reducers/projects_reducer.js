// jshint esversion: 6

import {RECEIVE_ALL_PROJECTS, RECEIVE_SINGLE_PROJECT, REMOVE_PROJECT} from '../actions/project_actions';
import {RECEIVE_PROJECT} from '../actions/backer_actions';
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
    case RECEIVE_PROJECT:
      newState = Object.assign({}, oldState, {[action.project.projects.id]: action.project.projects});
      return newState;
    case REMOVE_PROJECT:
      newState = merge({}, oldState);
      delete newState[action.project.id];
      return newState;
    default:
      return oldState;
  }
};

// Object.assign will overwrite (more harsh), merge will merge (recursively)
// It was written for experimentation purposes solely. IT should not matter.

// We have to put RECEIVE_PROJECT in here, and not in the backers_reducer
// because its the projects slice of state that we are updating!!

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
