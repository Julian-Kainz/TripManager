sap.ui.define([], function () {
  "use strict";
  return {
    calculateDurationInDays: function (dStartDate, dEndDate) {
      if (!dStartDate || !dEndDate) return "";

      const start = new Date(dStartDate);
      const end = new Date(dEndDate);

      const diff = (end - start) / (1000 * 60 * 60 * 24);

      return diff + " Days";
    },
    getFormattedFlightDateTime: function (dateTime) {
      if (!dateTime) return "";

      const oDate = new Date(dateTime);

      const oFormat =
        sap.ui.core.format.DateFormat.getDateTimeInstance({
          pattern: "dd.MM.yyyy - H:mm",
        });

      return oFormat.format(oDate);
    },
  };
});
