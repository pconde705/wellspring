


export const searchTitles = (query) => (
  $.ajax({
    method: 'GET',
    url: 'api/search',
    data: {query}
  })
);
