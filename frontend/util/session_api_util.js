
export const signup = (user) => (
  $.ajax({
    method: 'POST',
    url: 'api/user',
    data: {user} // you do not want to destructure this data.
  })
);

export const login = (user) => (
  $.ajax({
    method: 'POST',
    url: 'api/session',
    data: {user}
  })
);

export const logout = () => (
  $.ajax({
    method: 'DELETE',
    url: 'api/session'
  })
);
