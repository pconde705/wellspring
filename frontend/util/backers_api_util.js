//
// export const patchProjectBackers = (project) => {
//   return $.ajax({
//     method: 'PATCH',
//     url: `api/projects/${project.id}`,
//     data: {project}
//   });
// };
//
// export const patchProjectRewards = (project_id, reward) => {
//   return $.ajax({
//     method: 'PATCH',
//     url: `api/projects/${project_id}/rewards/${reward.id}`,
//     data: {reward}
//   });
// };


// I return because I didn't implicitly return


export const postProjectBackers = (project_id, reward_id, cash_only) => (
  $.ajax({
    method: 'POST',
    url: '/api/project_backers',
    data: {backers: {project_id, reward_id, cash_only}}
  })
);
