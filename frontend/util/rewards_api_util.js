
export const postRewards = (project_id, reward) => (
  $.ajax({
    method: 'POST',
    url: `api/projects/${project_id}/rewards`,
    data: {reward}
  })
);
