

import values from 'lodash/values';

export const selectAllProjects = state => (
  values(state.projects)
);


export const selectAllRewards = ({rewards}, project_id) => {
  let reward_array = [];
  const keys = Object.keys(rewards);
  keys.forEach((key) => {
    if (rewards[key].project_id === project_id) {
      reward_array.push(keys[key]);
    }
  });
  return reward_array;
};
