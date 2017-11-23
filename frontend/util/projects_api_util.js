/*jshint esversion: 6 */

export const getProjects = () => (
  $.ajax({
    method: 'GET',
    url: 'api/projects',
  })
);

export const getProject = (id) => (
  $.ajax({
    method: 'GET',
    url: `api/projects/${id}`,
  })
);

export const createProject = (project) => (
  $.ajax({
    method: 'POST',
    url: 'api/projects',
    data: {project}
  })
);

export const editProject = (project) => (
  $.ajax({
    method: 'PATCH',
    url: `api/projects/${project.id}`,
    data: {project}
  })
);

export const deleteProject = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/projects/${id}`,
  })
);
