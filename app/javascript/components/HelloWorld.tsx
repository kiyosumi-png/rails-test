import React from "react";

type Props = {
  greeting: string;
  name: string;
};

function HelloWorld({ greeting, name }: Props) {
  return (
    <div>
      Greeting: {greeting} from {name}
    </div>
  );
}

export default HelloWorld;
