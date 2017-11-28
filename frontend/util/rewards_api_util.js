
export const postRewards = (project_id, reward) => (
  $.ajax({
    method: 'POST',
    path: `api/projects/${project_id}/rewards`,
    data: {reward}
  })
);
