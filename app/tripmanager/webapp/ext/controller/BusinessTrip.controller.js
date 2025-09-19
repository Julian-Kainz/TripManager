sap.ui.define(
  [
    "sap/fe/core/PageController",
    "at/clouddna/tripmanager/ext/controller/formatter/BusinessTripFormatter",
  ],
  function (PageController, BusinessTripFormatter) {
    "use strict";

    return PageController.extend(
      "at.clouddna.tripmanager.ext.view.BusinessTrip",
      {
        ...BusinessTripFormatter,

        onPostComment: function (oEvent) {
          const sText = oEvent.getParameter("value");
          if (!sText) return;
        },
      }
    );
  }
);
