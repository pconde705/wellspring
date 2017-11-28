


export const searchMusicDatabase = (query) => (
  $.ajax({
    method: 'GET',
    url: 'api/search',
    data: { search: {query}}
  })
)
