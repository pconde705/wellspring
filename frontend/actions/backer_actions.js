// jshint esversion: 6

import {patchProjectBackers, patchProjectRewards} from '../util/backers_api_util';

export const RECEIVE_PROJECT = "RECEIVE_PROJECT";
export const RECEIVE_REWARD = "RECEIVE_REWARD";

const receiveProject = (project) => ({
  type: RECEIVE_PROJECT,
  project
});

export const editProjectBackers = (id) => dispatch => (
  patchProjectBackers(id).then(project => dispatch(receiveProject(project)))
);

const receiveReward = reward => ({
  type: RECEIVE_REWARD,
  reward
});

export const editProjectRewards = (project_id, reward) => dispatch => (
  patchProjectRewards(project_id, reward).then(reward => dispatch(receiveReward(reward)))
);
