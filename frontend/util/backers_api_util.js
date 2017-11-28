
export const patchProjectBackers = (project) => {
  $.ajax({
    method: 'PATCH',
    url: `api/projects/${project.id}`,
    data: {project}
  });
};

export const patchProjectRewards = (project_id, reward) => {
  $.ajax({
    method: 'PATCH',
    url: `api/projects/${project_id}/rewards/${reward.id}`,
    data: {reward}
  });
};
