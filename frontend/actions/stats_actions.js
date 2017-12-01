
import {getAllProjects, getAllFundedProjects, getAllBackers} from '../util/stats_api_util';

export const RECEIVE_ALL_PROJECTS_COUNT = "RECEIVE_ALL_PROJECTS_COUNT";
export const RECEIVE_ALL_FUNDED_PROJECTS = "RECEIVE_ALL_FUNDED_PROJECTS";
export const RECEIVE_ALL_BACKERS = "RECEIVE_ALL_BACKERS";

const receiveAllProjectsCount = (projects) => ({
  type: RECEIVE_ALL_PROJECTS_COUNT,
  projects
});

const receiveAllFundedProjects = (projects) => ({
  type: RECEIVE_ALL_FUNDED_PROJECTS,
  projects
});

const receiveAllBackers = (backers) => ({
  type: RECEIVE_ALL_BACKERS,
  backers
});


export const fetchAllProjectsCount = () => dispatch => (
  getAllProjects().then(projects => dispatch(receiveAllProjectsCount(projects)))
);

export const fetchAllFundedProjects = () => dispatch => (
  getAllFundedProjects().then(projects => dispatch(receiveAllFundedProjects(projects)))
);

export const fetchAllBackers = () => dispatch => (
  getAllBackers().then(backers => dispatch(receiveAllBackers(backers)))
);
