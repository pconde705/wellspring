/*jshint esversion: 6 */
import {connect} from 'react-redux';
import Navbar from './navbar';
import {login, signup, logout} from '../../actions/session_actions';

const mapStateToProps = state => {
  // debugger; This is how you would test and see your state. But you must
  // remove the normal parentheses and add the curly braces instead, allowing you
  // to write in debugger; but remember you must manually return in this case!
  return {
    currentUser: state.sessionReducer.currentUser // sessionReducer comes from your root_reducer
};};
// Identical to below:
// const mapStateToProps = ({ session }) => ({
//   currentUser: session.currentUser
// });

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Navbar);
