
export const signup = (newUser) => (
  $.ajax({
    method: 'POST',
    url: 'api/user',
    data: { newUser }
  })
);

export const login = (newUser) => (
  $.ajax({
    method: 'POST',
    url: 'api/session',
    data: { newUser }
  })
);

export const logout = () => (
  $.ajax({
    method: 'DELETE',
    url: 'api/session'
  })
);
