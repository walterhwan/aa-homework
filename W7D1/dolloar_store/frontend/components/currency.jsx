import React from 'react';

const Currency = ({name, rate}) => {
  let color = "green";
  if(rate < 1) {
    color = "red";
  }

  return (
    <div className={color}>
      {`${name} ${rate}`}
    </div>
  );
};
// {name}&nbsp;{rate}

export default Currency;
