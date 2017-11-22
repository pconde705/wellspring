
/*jshint esversion: 6 */
export const signup = (user) => ( // if you don't call this user you must not destructure
  $.ajax({
    method: 'POST',
    url: 'api/user',
    data: {user} // you do not want to destructure this data.
  })
);

export const login = (user) => ( // if you don't call this user you must not destructure
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
