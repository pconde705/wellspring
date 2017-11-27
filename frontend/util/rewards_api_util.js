
export const postRewards = (project_id, reward) => (
  $.ajax({
    method: 'POST',
    path: `api/rewards/${project_id}/rewards`,
    data: {reward}
  })
);
