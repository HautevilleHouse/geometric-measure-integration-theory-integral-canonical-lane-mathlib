import GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MeasurableWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse