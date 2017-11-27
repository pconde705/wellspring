
import {postRewards} from '../util/rewards_api_util';

export const RECEIVE_REWARD = 'RECEIVE_REWARD';


const receiveReward = (reward) => ({
  type: RECEIVE_REWARD,
  reward
});

export const createReward = (reward) => dispatch => (
  postRewards(reward).then(newReward => dispatch(receiveReward(newReward)))
);
