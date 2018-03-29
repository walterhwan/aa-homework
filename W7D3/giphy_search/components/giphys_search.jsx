import React from 'react';

import GiphysIndex from './giphys_index';

class GipyhsSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = { searchTerm: 'golden retriever'};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    // e.preventDefault();
    this.setState({ searchTerm: e.currentTarget.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    let searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    let { giphys } = this.props;
    return (
      <div>
        <form className='search-bar'>
          <input value={this.state.searchTerm}
            onChange={this.handleChange} />
          <button type='submit' onCLick={this.handleSubmit}>Search Giphy</button>
          <GiphysIndex giphys={giphys} />
        </form>
      </div>
    );
  }
}

export default GipyhsSearch;
