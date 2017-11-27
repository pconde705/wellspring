/*jshint esversion: 6 */

import * as ProjectApiUtil from '../util/projects_api_util';

export const RECEIVE_ALL_PROJECTS = "RECEIVE_ALL_PROJECTS";
export const RECEIVE_SINGLE_PROJECT = "RECEIVE_SINGLE_PROJECT";
export const REMOVE_PROJECT = "REMOVE_PROJECT";

export const CLEAR_ERRORS = 'CLEAR_ERRORS';
export const RECEIVE_PROJECT_ERRORS = 'RECEIVE_PROJECT_ERRORS';

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

const receiveProjectErrors = (errors) => ({
  type: RECEIVE_PROJECT_ERRORS,
  errors
});

// error handling above

const receiveAllProjects = (projects) => ({
  type: RECEIVE_ALL_PROJECTS, // this is the action.type in the reducer
  projects // this is whate you are returning in the reducer: action.projects
});

export const fetchAllProjects = () => dispatch => (
  ProjectApiUtil.getProjects().then(allProjects => dispatch(receiveAllProjects(allProjects)))
  // this is what makes the call to fetch data from your backend
);

const receiveSingleProject = (payload) => ({
  type: RECEIVE_SINGLE_PROJECT,
  payload
});

export const fetchSingleProject = (id) => dispatch => (
  ProjectApiUtil.getProject(id).then(singleProject => dispatch(receiveSingleProject(singleProject)))
);

export const createProject = (project) => dispatch => (
  ProjectApiUtil.createProject(project).then(project => dispatch(receiveSingleProject(project)),
  error => (dispatch(receiveProjectErrors(error.responseJSON))))
);

export const editProject = (id) => dispatch => (
  ProjectApiUtil.editProject(id).then(project => dispatch(receiveSingleProject(project)),
  error => (dispatch(receiveProjectErrors(error.responseJSON))))
);

const removeProject = (id) => ({
  type: REMOVE_PROJECT,
  id
});

export const deleteProject = (id) => dispatch => (
  ProjectApiUtil.deleteProject(id).then(project => dispatch(removeProject(id)))
);
