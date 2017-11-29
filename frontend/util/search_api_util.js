


export const searchTitles = (search) => (
  $.ajax({
    method: 'GET',
    url: 'api/search',
    data: {search}
  })
);

// in the data: {whatever_you_write_in_here} references the params in the SearchController in this case
// param.require(:whatever_you_write_in_here) has to match with your ajax util request!!
