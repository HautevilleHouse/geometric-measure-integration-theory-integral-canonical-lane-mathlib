import GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.MeasureTheory.Integral.Bochner

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MeasureSpace where
  carrier : Type
  sigmaAlgebra : MeasurableSpace carrier
  measure : MeasureTheory.Measure carrier

structure AdmittedObject where
  space : MeasureSpace
  integrableFunction : MeasureTheory.Integral (space.measure) (space.carrier → ℝ)
  integralFinite : Prop
  conclusion : integralFinite

structure EndgameState where
  object : AdmittedObject

def MeasurableWitnessClosed (O : AdmittedObject) : Prop :=
  O.integralFinite

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse