import {connect} from 'react-redux';
import Reward from './reward';
import {createReward} from '../../actions/reward_actions';
import {selectAllRewards} from '../../reducers/selectors';

const mapStateToProps = (state, {project_id}) => {
  return {
    rewards: selectAllRewards(state, project_id),
    project_id
}};

const mapDispatchToProps = dispatch => ({
  createReward: (...reward) => dispatch(createReward(...reward))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Reward);
