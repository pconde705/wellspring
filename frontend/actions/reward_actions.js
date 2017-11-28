
import {postRewards} from '../util/rewards_api_util';

export const RECEIVE_REWARD = 'RECEIVE_REWARD';


export const CLEAR_ERRORS = 'CLEAR_ERRORS';
export const RECEIVE_REWARD_ERRORS = 'RECEIVE_REWARD_ERRORS';

export const clearErrors = () => ({
  type: CLEAR_ERRORS
});

const receiveProjectErrors = (errors) => ({
  type: RECEIVE_REWARD_ERRORS,
  errors
});


const receiveReward = (reward) => ({
  type: RECEIVE_REWARD,
  reward
});

export const createReward = (project_id, reward) => dispatch => (
  postRewards(project_id, reward).then(newReward => dispatch(receiveReward(newReward)),
  error => (dispatch(receiveProjectErrors(error.responseJSON))))
);
