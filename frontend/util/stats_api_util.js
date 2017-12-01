
export const getAllProjects = () => (
  $.ajax({
    method: 'GET',
    url: '/api/all_projects'
  })
);

export const getAllFundedProjects = () => (
  $.ajax({
    method: 'GET',
    url: '/api/all_funded_projects'
  })
);

export const getAllBackers = () => (
  $.ajax({
    method: 'GET',
    url: '/api/all_backers'
  })
);
