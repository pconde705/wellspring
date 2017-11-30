import {connect} from 'react-redux';
import {createProjectBackers, createRewardBackers} from '../../actions/backer_actions';
import Backer from './backer';

const mapStateToProps = (state, ownProps) => {
  // debugger;
  // console.log(state);
  return {
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = dispatch => ({
  createProjectBackers: (project) => dispatch(createProjectBackers(project)),
  createRewardBackers: (reward) => dispatch(createRewardBackers(reward))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Backer);
