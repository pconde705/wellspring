
export const postRewards = (reward) => (
  $.ajax({
    method: 'POST',
    path: 'api/rewards',
    data: {reward}
  })
);
