import * as ProjectApiUtil from '../util/projects_api_util';

export const RECEIVE_ALL_PROJECTS = "RECEIVE_ALL_PROJECTS";
export const RECEIVE_SINGLE_PROJECT = "RECEIVE_SINGLE_PROJECT";
export const REMOVE_PROJECT = "REMOVE_PROJECT";

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
  ProjectApiUtil.createProject(project).then(project => dispatch(receiveSingleProject(project)))
);

export const editProject = (id) => dispatch => (
  ProjectApiUtil.editProject(id).then(project => dispatch(receiveSingleProject(project)))
);

const removeProject = (id) => ({
  type: REMOVE_PROJECT,
  id
});

export const deleteProject = (id) => dispatch => (
  ProjectApiUtil.deleteProject(id).then(project => dispatch(removeProject(id)))
);
